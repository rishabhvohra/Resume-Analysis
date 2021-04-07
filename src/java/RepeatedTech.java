public class RepeatedTech {

    public static void main(String[] args) {
        String input = " ARUN JOSE Software Engineer(4+ years) E-mail: arunjs46@gmail.com Mobile: +91?8870856479Career Objective To successful software Professional Progressive Organization offers Opportunities Advancement, allow actualize skills developed far good potential professional growth learningySummary? Possess overall 3.8 years experience designing, developing software applications various software requirements.Working Experience Working Software Engineer Stigmata Techno Solutions LLP, Chennai August 2015 date.Professional Competency? 4+ years Experience Industry Developing JAVA J2EE applications using Tomcat NetBeans 8.2, Eclipse. Good implementation Knowledge Hibernate Struts Framework.? Developed applications using Java, JSP, Servlets, Struts, Hibernate JDBC.? Working experience Apache Tomcat.? Having database programming skills MYSQL.? Strong trouble shooting problem solving skills.? Good implementation Knowledge MVC design patterns.? Maintain positive attitude face changes work assignments conditions.Educational Qualifications Bachelor Engineering Computer Science Engineering Immauel Araser College Of Engineering Technology, Marthandam backlogs 2015.? Diploma Computer Science Engineering Udaya Polytechnic College Vellamodi 83% 2012.? H.S.C C.S.I.V.V .High School, Irenipuram 51.6% 2010.? S.S.L.C C.S.I.V.V .High School, Irenipuram 53.8% 2008.Projects Details1. Rama Enterprises web Application Duration Nov 2017 dateTeam Size 4System Environment JDK8,J2EE, struts2, MySQL, Tomcat8. NetBeansClient Rama Enterprises, Chennai Description: Rama Enterprises Web Application ERP-based Web Application contains modules Purchase Order details, Product details, Employee details, Sales, Stock maintenance Production wastage details company.Roles Responsibilities:o Developed Purchase Order details new material purchase order product work order defined Admin, viewing purchase order date wise, week wise, month wise, product searching records Application.o Created Reports based product sale product material wastage details executed weekly basis triggering email notification.o Created employee profile employee details employee salary calculated based working days.o Developing presentation layer using JSP. Involved writing Bean Classes.o Storing retrieving data MySQL database.o Developing various server validations Client validations.2. Sri Dhanalakshmi Textiles web Application Duration Jan 2017 Oct 2017Team Size 6System Environment J2EE, struts2, MySQL, Tomcat7.x NetBeansClient Sri Dhanalakshmi TextilesDescription: Sri Dhanalakshmi Textiles Web Application ERP-based Web Application contains modules Purchase Order details, Product details, Employee details, Sales, Stock maintenance Production details company.Roles Responsibilities:o Developed Purchase Order details new purchase order defined Admin, viewing purchase order date wise, week wise, month wise, product searching records Application.o Created Reports based payment product details executed daily basis triggering email notification.o Developing presentation layer using JSP. Involved writing Bean Classes.o Storing retrieving data MySQL database.o Developing various server validations Client validations.3. BBBSA Finance Web SiteDuration July 2015 Dec 2016Team Size 6System Environment Java, j2ee, struts2, Hibernate, MySQL, Tomcat7.xClient BBBSA FinanceDescription: Business Loans Advice Financial Professionals BBBSA Finance. We specialize lending money using book security. We specialize lending money using book security contains modules Connective Broker Funding, Verify Trust, Terms Loan, Mortgage Manager Detail, Borrower Income, Special Purpose Bank Account, Fees, Form maintenance Executed Details company.Roles Responsibilities:o Developed verify trust modules defined Mobile checking, mail checking address checking.o Developed enquiry module Implemented encrypted storage maintenance modules Developing various server validations Client validationso Developing presentation layer using STRUCT 2.0. Involved writing Bean Classes.o Storing retrieving data MySQL database using Hibernet.PERSONAL DETAILS:Date Birth 04-Jan-1993Father?s Name Paul Rathinam Gender MaleMarital Status UnmarriedContact number 8870856479Permanent address Pattakattu Vilai, Annai nagar, Irenipuram post Kanyakumari (Dt), TamilNadu 629 162.Date: Yours Sincerely,Place: Arun jose";  //Input String 
        String[] words = input.split(" ");  //Split the word from String
        int wrc = 1;    //Variable for getting Repeated word count

        for (int i = 0; i < words.length; i++) //Outer loop for Comparison       
        {
            for (int j = i + 1; j < words.length; j++) //Inner loop for Comparison
            {

                if (words[i].equals(words[j])) //Checking for both strings are equal
                {
                    wrc = wrc + 1;    //if equal increment the count
                    words[j] = "0"; //Replace repeated words by zero
                }
            }
            if (words[i] != "0") {
                System.out.println(words[i] + "--" + wrc); //Printing the word along with count
            }

            wrc = 1;

        }

    }
}
