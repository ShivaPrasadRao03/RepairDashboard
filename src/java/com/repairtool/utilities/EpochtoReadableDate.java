/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repairtool.utilities;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Glodeveloper
 */
public class EpochtoReadableDate {

    private static final SimpleDateFormat monthDayYearformatter = new SimpleDateFormat(
            "MMMMM dd, yyyy");

    public static String convertTime(long epoch) {

        String date = new java.text.SimpleDateFormat("dd/MM/yyyy HH:mm:ss").format(new java.util.Date(epoch * 1000));
        //System.out.println("Date"+date);
        return date;
    }

    long epoch = 0;
    String date = "";

    public long currentEpoch(long epoch) {
        epoch = System.currentTimeMillis() / 1000;
        System.out.println(epoch + "=currentDateEpoch");
             
        return epoch;
    }

    public long datetoEpoch(String date) throws ParseException {
        //String str = "12/12/2012 5:35 PM"; //Your String containing a date
        DateFormat dF = new SimpleDateFormat("dd/MM/yyyy hh:mm"); // The mask

        // 'a' value in the Mask represents AM / PM - h means hours in AM/PM mode
        Date date1 = dF.parse(date); // parsing the String into a Date using the mask
        //Date.getTime() method gives you the Long with milliseconds since Epoch.
        long datetoepoch = date1.getTime() / 1000;
        System.out.println("Epoch representation of this date is: " + datetoepoch);
        return datetoepoch;
    }

    /*
      //Different date format 
      public long newdatetoepoch(String date) throws ParseException 
      {
          DateFormat dF = new SimpleDateFormat("dd/MM/yyyy hh:mm"); // The mask
         // 'a' value in the Mask represents AM / PM - h means hours in AM/PM mode
        Date date1 = dF.parse(date); // parsing the String into a Date using the mask
        //Date.getTime() method gives you the Long with milliseconds since Epoch.
        long newdatetoepoch = date1.getTime()/1000;
        //System.out.println("Epoch representation of this date is: " + newdatetoepoch);
        return newdatetoepoch;
    
      }*/
     public long currentDatetoEpoch(String currentdate) throws ParseException {
        //String str = "12/12/2012 5:35 PM"; //Your String containing a date
        DateFormat dF = new SimpleDateFormat("dd/MM/yyyy"); // The mask

        // 'a' value in the Mask represents AM / PM - h means hours in AM/PM mode
        Date date1 = dF.parse(currentdate); // parsing the String into a Date using the mask
        //Date.getTime() method gives you the Long with milliseconds since Epoch.
        long datetoepoch = date1.getTime() / 1000;
        System.out.println("Epoch representation of this date is: " + datetoepoch);
        return datetoepoch;
    }
    
    
    
    
    public String epochtoDate(String date) {

        Date date1 = new Date(date); // 'epoch' in long

        SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
        String dateString = formatter.format(date1);
        System.out.println(dateString + "=DateString");

        return dateString;
    }
    
    public long currentEpoch()
    {
        long epoch = System.currentTimeMillis() / 1000;
        return epoch;
    }

    public static void main(String[] args) throws ParseException {
        //Current date epoch
        long epoch = System.currentTimeMillis() / 1000;
        System.out.println(epoch + "=CurrentDateEpoch");

        //epochtocurrentdate with time
        String dateTime = new java.text.SimpleDateFormat("MM/dd/yyyy HH:mm:ss").format(new java.util.Date(epoch * 1000));
        System.out.println(dateTime + "=EpochtoCurrentDate");//With time

        //epoch to currentdate without time
        String date = new java.text.SimpleDateFormat("MM/dd/yyyy").format(new java.util.Date(epoch * 1000));
        System.out.println(date + "=EpochtoCurrentDate");//Without time

        //Epoch to date
        String date1 = convertTime(Long.valueOf("1455773040000") / 1000);
        System.out.println("Date:" + date1);

        EpochtoReadableDate ed = new EpochtoReadableDate();
        long newdateepoch = ed.datetoEpoch("19/06/2017 15:47:00");
        System.out.println("Dateepoch" + newdateepoch);

        //Get CurrentDate Epoch
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        Date currentdate = new Date();
        System.out.println(dateFormat.format(currentdate));
        long currentDateEpoch = ed.currentDatetoEpoch(dateFormat.format(currentdate));
        String currentDateepoch =String.valueOf(currentDateEpoch);
        System.out.println("currentDateEpoch"+currentDateepoch);
    }

}
