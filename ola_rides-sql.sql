create database Ola;
Use ola;

# 1. Retrive all  Successful bookings .
Create view Successful_booking as
Select * from ola_rides where Booking_Status = "Success";

Select * from Successful_booking;
 # 2. total Successful bookings ;
 
 Create view total_Successful_bookings as
 Select Count(*) from ola_rides where Booking_Status ="success";
 
 Select * from  total_Successful_bookings;
 
  # 3.Find the Average ride distance for each vehicle type.
 Create view  Average_ride_distance_for_each_vehicle as
 Select Vehicle_type,avg(ride_distance) from ola_rides 
 group by Vehicle_type;
  
  select * from Average_ride_distance_for_each_vehicle;
 
# 4.Get the total number of rides canceled by customer.
 create view total_number_of_rides_canceled_by_customer as
 select Count(*) from ola_rides where booking_status ="canceled by customer";
 
 select * from total_number_of_rides_canceled_by_customer;
 
# 5.List the top 5 customer who booked the ride.
Create view top_5_customer as
select Customer_ID ,Count(booking_id) as total_rides from ola_rides 
group by customer_id 
order by total_rides desc limit 5; 

select * from top_5_customer;

# 6.Calculate the average customer rating for each vehicle type.
create view Average_rating as
SELECT Vehicle_Type, AVG(Customer_Rating) AS avg_rating FROM ola_rides GROUP BY Vehicle_Type;

select * from Average_rating;

#7.Find the total revenue generated from successful rides.
Create view Total_revenue as
select Sum(Booking_value) as total_revenue from ola_rides where booking_status = "success";

Select *  from Total_revenue;

#8.  Find the most common payment method.
Create view Common_payment_method as
select payment_method,count(*) as total from ola_rides
group by payment_method
order by Total desc limit 1;

select * from Common_payment_method;

#9. Retrive all rides where paymnet was made using UPI.
Create view UPI_payment as
select * from ola_rides  where payment_method ="upi";

select * from upi_payment;

#10.Find the busiest pickup locations (top 5).
Create view Busy_picup_location as
	SELECT Pickup_Location, COUNT(*) AS total FROM ola_rides 
    GROUP BY Pickup_Location 
    ORDER BY total DESC LIMIT 5;
    
    select * from Busy_picup_location;
    
  #11. ola ride cancelation rate
  create view cancelation_rate_by_Customer as
  SELECT (COUNT(CASE WHEN Booking_Status = 'Canceled by customer' THEN 1 END) * 100.0 / COUNT(*)) AS cancellation_rate FROM ola_rides;
  drop view cancelation_rate;
select *  from cancelation_rate_by_Customer;

#12. list all incomplete ride along with reason.
 create view incomplete_rides as
 select Booking_id,incomplete_rides_reason from ola_rides 
 where incomplete_rides = "yes";
 
 select * from  incomplete_rides;
 
 
 # 1. Retrive all  Successful bookings .
Select * from Successful_booking;

 # 2. total Successful bookings ;
 Select * from  total_Successful_bookings;
 
  # 3.Find the Average ride distance for each vehicle type.
  select * from Average_ride_distance_for_each_vehicle;
 
# 4.Get the total number of rides canceled by customer.
 select * from total_number_of_rides_canceled_by_customer;
 
# 5.List the top 5 customer who booked the ride.
select * from top_5_customer;

# 6.Calculate the average customer rating for each vehicle type.
select * from Average_rating;

#7.Find the total revenue generated from successful rides.
Select *  from Total_revenue;

#8.  Find the most common payment method.
Create view Common_payment_method as
select * from Common_payment_method;

#9. Retrive all rides where paymnet was made using UPI.
select * from upi_payment;

#10.Find the busiest pickup locations (top 5). 
    select * from Busy_picup_location;
    
  #11. ola ride cancelation rate
select *  from cancelation_rate_by_Customer;

#12. list all incomplete ride along with reason.
 select * from  incomplete_rides;


 
 



