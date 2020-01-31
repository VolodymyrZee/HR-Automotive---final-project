package com.myProject.HRproject;


import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.myProject.HRproject.model.Users;
import com.myProject.HRproject.repository.UserRepository;

@Component
public class WebUtils{
    
	private JavaMailSender sender;
	
	private static final Logger logger=LoggerFactory.getLogger("AppController.class");
	
	private UserRepository userRepository;
	
	@Autowired
    HttpServletRequest request;
	
	private static final String UPLOADED_FOLDER = 
			"static"+ File.separator +"img";
	
	public void addProfilePhoto(MultipartFile file, long id, String folder) throws IllegalStateException, IOException {
	      try {
			 // save dir
	    	 String destDir = request.getSession().getServletContext().getRealPath(UPLOADED_FOLDER)+ File.separator +folder+ File.separator +id+ File.separator +"profile";
			 //innitalize file
	    	 
			 File dir = new File(destDir);
			 //if folder does not exist create it
			 if(!dir.exists()){                                    	 
			    new File(destDir).mkdirs();                                        
				}
			    //get file from form
				MultipartFile multipartFile = (MultipartFile) file; 
				String fileName = file.getOriginalFilename(); //set
			    File doc = new File(destDir + File.separator + fileName);
			    //rename file
			    File rename = new File(destDir + File.separator + "user_"+id+".jpg");
			    doc.renameTo(rename);
				//save to file system
				multipartFile.transferTo(rename);
				Users user=userRepository.findById(id).get();
			    user.setImage("user_"+id+".jpg");
				userRepository.save(user);
				 
			  } catch (Exception e) {
				e.printStackTrace();
			}
				 
		   }
	
	@Autowired    
    public WebUtils(JavaMailSender sender, UserRepository userRepository) {
		super();
		this.sender = sender;
		this.userRepository = userRepository;
	}
    
	public void sendMail(String to, String msg, String subject) {
        MimeMessage message = sender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message);
        try {
            helper.setTo(to);
            helper.setText(msg);
            helper.setSubject(subject);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        try {
			sender.send(message);
		} catch (MailException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
     }
    
	
	
	public void multiplesave(MultipartFile[] files, long id) throws IllegalStateException, IOException {
  	  
		try {
			String realPathtoUploads = 
			request.getSession().getServletContext().getRealPath(UPLOADED_FOLDER+ File.separator +"users");
			File dir = new File(realPathtoUploads+ File.separator + id);
			List<String> fileNames = new ArrayList<String>();
			 
			if (!dir.exists())
			    dir.mkdirs();
			if (files != null && files.length > 0) {
			     for (MultipartFile file : files) {
			         String fileName = file.getOriginalFilename();
			         String filePath = realPathtoUploads + File.separator + id+ File.separator + fileName;
			         //logger.info("################## Dest {}", filePath); 
			         File destination = new File(filePath);
			         try {
						file.transferTo(destination);
					} catch (Exception e) {
						e.printStackTrace();
					}
			         fileNames.add(fileName);

			     }
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	  
	
  }
	 	   
	   public void removefiles(long id, String image) {
		try {
			String realPathtoUploads = request.getSession().getServletContext().getRealPath(UPLOADED_FOLDER);
		    
			File file = new File(realPathtoUploads + File.separator 
					+ id+ File.separator +image+"");    		
	 	    if(file.delete()){
	 	    	if(userRepository.findById(id).get().getImage() != null) {
					Users cus=userRepository.findById(id).get();
					cus.setImage("");
					userRepository.save(cus);
				}	
			System.out.println(file.getName() + " is deleted!");				
			}else{
				System.out.println("Delete operation is failed.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	   }
	   
	   public void getFiles(Model model, long id) {
	    	List<String> results = new ArrayList<String>();
			try {
				String realPathtoUploads = 
				request.getSession().getServletContext().getRealPath(UPLOADED_FOLDER+ File.separator +"users");
						
				File[] files = new File(realPathtoUploads + File.separator + id).listFiles();
			   for (File file : files) {
				    if (file.isFile()) {
				        results.add(file.getName());
				        model.addAttribute("filenames", results);
				     }				   
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    }
	   
	
    
}
