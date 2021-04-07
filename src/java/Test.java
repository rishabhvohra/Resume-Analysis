/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author stigmata
 */
public class Test {

    static String data2 = null;
    static String cse = null;

    public static void main(String[] args) {
        String data = "ARUN          JOSE        P           Software Engineer(4+ years) E-mail: arunjs46@gmail.com Mobile: +91?8870856479 Career Objective To be a successful software Professional in a Progressive Organization that offers Opportunities for Advancement, this will allow me to actualize the skills developed so far with a good potential for professional growth and further learning. Summary ? Possess overall of 3.8 years of experience in designing, developing software applications for various software requirements. Working Experience ? Working as a Software Engineer in Stigmata Techno Solutions LLP, Chennai from August 2015 to till date. Professional Competency ? 4+ years of Experience in IT Industry in Developing JAVA and J2EE applications using Tomcat & NetBeans 8.2, Eclipse. ? Good implementation Knowledge in Hibernate and Struts Framework. ? Developed applications using Java, JSP, Servlets, Struts, Hibernate and JDBC. ? Working experience on Apache Tomcat. ? Having database programming skills MYSQL. ? Strong trouble shooting and problem solving skills. ? Good implementation Knowledge in MVC design patterns. ? Maintain a positive attitude in the face of changes in work assignments or conditions. Educational Qualifications ? Bachelor of Engineering in Computer Science and Engineering from Immauel Araser J J College Of Engineering and Technology, Marthandam with 2 backlogs 2015. ? Diploma Computer Science and Engineering from Udaya Polytechnic College , Vellamodi with 83% in 2012. ? H.S.C from C.S.I.V.V .High School, Irenipuram with 51.6% in 2010. ? S.S.L.C from C.S.I.V.V .High School, Irenipuram with 53.8% in 2008. Projects Details 1. Rama Enterprises web Application Duration Nov 2017 to till date Team Size 4 System Environment JDK8,J2EE, struts2, MySQL, Tomcat8. and NetBeans Client Rama Enterprises, Chennai Description: Rama Enterprises Web Application is ERP-based Web Application which contains modules of Purchase Order details, Product details, Employee details, Sales, Stock maintenance and Production & wastage details of the company. Roles and Responsibilities: o Developed Purchase Order details where new material purchase order and product work order defined by Admin, and viewing purchase order by date wise, week wise, month wise, product wise searching records of the Application. o Created Reports based on product sale and product material wastage details to be executed on weekly basis for triggering email notification. o Created employee profile where employee details and employee salary calculated based on working days. o Developing the presentation layer using JSP. o Involved in writing the Bean Classes. o Storing and retrieving the data in MySQL database. o Developing various server side validations and Client side validations. 2. Sri Dhanalakshmi Textiles web Application Duration Jan 2017 to Oct 2017 Team Size 6 System Environment J2EE, struts2, MySQL, Tomcat7.x and NetBeans Client Sri Dhanalakshmi Textiles Description: Sri Dhanalakshmi Textiles Web Application is ERP-based Web Application which contains modules of Purchase Order details, Product details, Employee details, Sales, Stock maintenance and Production details of the company. Roles and Responsibilities: o Developed Purchase Order details where new purchase order defined by Admin, and viewing purchase order by date wise, week wise, month wise, product wise searching records of the Application. o Created Reports based on bill payment and product details to be executed on daily basis for triggering email notification. o Developing the presentation layer using JSP. o Involved in writing the Bean Classes. o Storing and retrieving the data in MySQL database. o Developing various server side validations and Client side validations. 3. BBBSA Finance Web Site Duration July 2015 to Dec 2016 Team Size 6 System Environment Java, j2ee, struts2, Hibernate, MySQL, Tomcat7.x Client BBBSA Finance Description: Business Loans & Advice for Financial Professionals - BBBSA Finance. We specialize in lending money using the value of your book as security. We specialize in lending money using the value of your book as security which contains modules of Connective Broker Funding, Verify the Trust, Terms of Loan, Mortgage Manager Detail, Borrower Income, Special Purpose of Bank Account, Fees, Form maintenance and Executed Details of the company. Roles and Responsibilities: o Developed verify the trust modules defined by Mobile checking, mail checking and address checking. o Developed enquiry module o Implemented encrypted storage for form maintenance modules o Developing various server side validations and Client side validations o Developing the presentation layer using STRUCT 2.0. o Involved in writing the Bean Classes. o Storing and retrieving the data in MySQL database using Hibernet. PERSONAL DETAILS: Date of Birth : 04-Jan-1993 Father?s Name : Paul Rathinam G Gender : Male Marital Status : Unmarried Contact number : 8870856479 Permanent address : Pattakattu Vilai, Annai nagar, Irenipuram post Kanyakumari (Dt), TamilNadu ? 629 162. Date: Yours Sincerely, Place: Arun jose ";

        String data1[] = data.split(" ");
        for (int i = 0; i < data1.length; i++) {

            data2 = data1[i];
            System.out.println(data2);
            if (data2.contains("Computer")) {
                cse = "cse";
            } else if (data2.contains("ECE")) {
                cse = "ece";
            } else if (data2.contains("EEE")) {
                cse = "cse";
            } else {
                System.out.println("no");
            }
        }
        System.out.println(cse);

    }

}
