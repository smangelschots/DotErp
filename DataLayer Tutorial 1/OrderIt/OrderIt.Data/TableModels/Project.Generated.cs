
using System;
using System.Runtime.Serialization;
using OfficeSoft.Data.Crud;

namespace OrderIt.Data.Models	
{
	public partial class Project : ModelBase
	{
		public  Project(){
              Initialize();
		}

                private Guid _Id;
                private string _Code;
                private string _Address;
                private Nullable<Guid> _CityId;
                private string _EndDate;
                private string _WorkingDays;
                private string _StartDate;
                private string _Commercialname;
                private string _Name;
                private Nullable<Guid> _ProjectTypeId;
        
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
	    		public string Code 
        {
            get
            {
               return _Code;
            } 
            set
            {
                if(_Code != value){
                    SendPropertyChanging("Code");  
                    _Code = value;
                    SendPropertyChanged("Code"); 
                }
            }
        }
	    		public string Address 
        {
            get
            {
               return _Address;
            } 
            set
            {
                if(_Address != value){
                    SendPropertyChanging("Address");  
                    _Address = value;
                    SendPropertyChanged("Address"); 
                }
            }
        }
	    		public Nullable<Guid> CityId 
        {
            get
            {
               return _CityId;
            } 
            set
            {
                if(_CityId != value){
                    SendPropertyChanging("CityId");  
                    _CityId = value;
                    SendPropertyChanged("CityId"); 
                }
            }
        }
	    		public string EndDate 
        {
            get
            {
               return _EndDate;
            } 
            set
            {
                if(_EndDate != value){
                    SendPropertyChanging("EndDate");  
                    _EndDate = value;
                    SendPropertyChanged("EndDate"); 
                }
            }
        }
	    		public string WorkingDays 
        {
            get
            {
               return _WorkingDays;
            } 
            set
            {
                if(_WorkingDays != value){
                    SendPropertyChanging("WorkingDays");  
                    _WorkingDays = value;
                    SendPropertyChanged("WorkingDays"); 
                }
            }
        }
	    		public string StartDate 
        {
            get
            {
               return _StartDate;
            } 
            set
            {
                if(_StartDate != value){
                    SendPropertyChanging("StartDate");  
                    _StartDate = value;
                    SendPropertyChanged("StartDate"); 
                }
            }
        }
	    		public string Commercialname 
        {
            get
            {
               return _Commercialname;
            } 
            set
            {
                if(_Commercialname != value){
                    SendPropertyChanging("Commercialname");  
                    _Commercialname = value;
                    SendPropertyChanged("Commercialname"); 
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
	    		public Nullable<Guid> ProjectTypeId 
        {
            get
            {
               return _ProjectTypeId;
            } 
            set
            {
                if(_ProjectTypeId != value){
                    SendPropertyChanging("ProjectTypeId");  
                    _ProjectTypeId = value;
                    SendPropertyChanged("ProjectTypeId"); 
                }
            }
        }
	        }
}
