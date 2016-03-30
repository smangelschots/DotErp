
using System;
using System.Runtime.Serialization;
<<<<<<< HEAD
using OfficeSoft.Data.Crud;
=======
using Trinity;
>>>>>>> origin/master

namespace OrderIt.Data.Models	
{
	public partial class PurchaseOrder : ModelBase
	{
		public  PurchaseOrder(){
              Initialize();
		}

                private Guid _Id;
                private Nullable<Guid> _ProjectId;
                private Nullable<Guid> _VendorId;
                private string _Name;
                private Nullable<DateTime> _Date;
        
	    		public Guid Id 
        {
            get
            {
               return _Id;
            } 
            set
            {
                if(_Id != value){
                    SendPropertyChanging("Id");  
                    _Id = value;
                    SendPropertyChanged("Id"); 
                }
            }
        }
	    		public Nullable<Guid> ProjectId 
        {
            get
            {
               return _ProjectId;
            } 
            set
            {
                if(_ProjectId != value){
                    SendPropertyChanging("ProjectId");  
                    _ProjectId = value;
                    SendPropertyChanged("ProjectId"); 
                }
            }
        }
	    		public Nullable<Guid> VendorId 
        {
            get
            {
               return _VendorId;
            } 
            set
            {
                if(_VendorId != value){
                    SendPropertyChanging("VendorId");  
                    _VendorId = value;
                    SendPropertyChanged("VendorId"); 
                }
            }
        }
	    		public string Name 
        {
            get
            {
               return _Name;
            } 
            set
            {
                if(_Name != value){
                    SendPropertyChanging("Name");  
                    _Name = value;
                    SendPropertyChanged("Name"); 
                }
            }
        }
	    		public Nullable<DateTime> Date 
        {
            get
            {
               return _Date;
            } 
            set
            {
                if(_Date != value){
                    SendPropertyChanging("Date");  
                    _Date = value;
                    SendPropertyChanged("Date"); 
                }
            }
        }
	        }
}
