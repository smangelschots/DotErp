
using System;
using System.Runtime.Serialization;
<<<<<<< HEAD
using OfficeSoft.Data.Crud;
=======
using Trinity;

>>>>>>> origin/master

namespace OrderIt.Data.Models	
{
	public partial class Contact : ModelBase
	{
		public  Contact(){
              Initialize();
		}

                private Guid _Id;
                private string _Surname;
                private string _Name;
                private string _Address;
                private Nullable<Guid> _CityId;
                private string _Phone;
                private Nullable<Guid> _TypeId;
                private string _Email;
                private string _Mobile;
                private string _Phone2;
                private string _Geodata;
                private string _Website;
                private string _Fax;
<<<<<<< HEAD
                private Nullable<Byte[]> _Photo;
=======
                private byte[] _Photo;
>>>>>>> origin/master
                private string _VatRegistrationNo;
        
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
	    		public string Surname 
        {
            get
            {
               return _Surname;
            } 
            set
            {
                if(_Surname != value){
                    SendPropertyChanging("Surname");  
                    _Surname = value;
                    SendPropertyChanged("Surname"); 
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
	    		public string Phone 
        {
            get
            {
               return _Phone;
            } 
            set
            {
                if(_Phone != value){
                    SendPropertyChanging("Phone");  
                    _Phone = value;
                    SendPropertyChanged("Phone"); 
                }
            }
        }
	    		public Nullable<Guid> TypeId 
        {
            get
            {
               return _TypeId;
            } 
            set
            {
                if(_TypeId != value){
                    SendPropertyChanging("TypeId");  
                    _TypeId = value;
                    SendPropertyChanged("TypeId"); 
                }
            }
        }
	    		public string Email 
        {
            get
            {
               return _Email;
            } 
            set
            {
                if(_Email != value){
                    SendPropertyChanging("Email");  
                    _Email = value;
                    SendPropertyChanged("Email"); 
                }
            }
        }
	    		public string Mobile 
        {
            get
            {
               return _Mobile;
            } 
            set
            {
                if(_Mobile != value){
                    SendPropertyChanging("Mobile");  
                    _Mobile = value;
                    SendPropertyChanged("Mobile"); 
                }
            }
        }
	    		public string Phone2 
        {
            get
            {
               return _Phone2;
            } 
            set
            {
                if(_Phone2 != value){
                    SendPropertyChanging("Phone2");  
                    _Phone2 = value;
                    SendPropertyChanged("Phone2"); 
                }
            }
        }
	    		public string Geodata 
        {
            get
            {
               return _Geodata;
            } 
            set
            {
                if(_Geodata != value){
                    SendPropertyChanging("Geodata");  
                    _Geodata = value;
                    SendPropertyChanged("Geodata"); 
                }
            }
        }
	    		public string Website 
        {
            get
            {
               return _Website;
            } 
            set
            {
                if(_Website != value){
                    SendPropertyChanging("Website");  
                    _Website = value;
                    SendPropertyChanged("Website"); 
                }
            }
        }
	    		public string Fax 
        {
            get
            {
               return _Fax;
            } 
            set
            {
                if(_Fax != value){
                    SendPropertyChanging("Fax");  
                    _Fax = value;
                    SendPropertyChanged("Fax"); 
                }
            }
        }
<<<<<<< HEAD
	    		public Nullable<Byte[]> Photo 
=======
	    		public byte[] Photo 
>>>>>>> origin/master
        {
            get
            {
               return _Photo;
            } 
            set
            {
                if(_Photo != value){
                    SendPropertyChanging("Photo");  
                    _Photo = value;
                    SendPropertyChanged("Photo"); 
                }
            }
        }
	    		public string VatRegistrationNo 
        {
            get
            {
               return _VatRegistrationNo;
            } 
            set
            {
                if(_VatRegistrationNo != value){
                    SendPropertyChanging("VatRegistrationNo");  
                    _VatRegistrationNo = value;
                    SendPropertyChanged("VatRegistrationNo"); 
                }
            }
        }
	        }
}
