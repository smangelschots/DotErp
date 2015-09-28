
using System;
using System.Runtime.Serialization;
using Trinity;

namespace OrderIt.Data.Models	
{
	public partial class Country : ModelBase
	{
		public  Country(){
              Initialize();
		}

                private Guid _Id;
                private string _Name;
                private string _IBAN;
                private string _ISOCode;
                private string _InternationalCode;
                private string _EUCode;
                private string _Code;
        
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
	    		public string IBAN 
        {
            get
            {
               return _IBAN;
            } 
            set
            {
                if(_IBAN != value){
                    SendPropertyChanging("IBAN");  
                    _IBAN = value;
                    SendPropertyChanged("IBAN"); 
                }
            }
        }
	    		public string ISOCode 
        {
            get
            {
               return _ISOCode;
            } 
            set
            {
                if(_ISOCode != value){
                    SendPropertyChanging("ISOCode");  
                    _ISOCode = value;
                    SendPropertyChanged("ISOCode"); 
                }
            }
        }
	    		public string InternationalCode 
        {
            get
            {
               return _InternationalCode;
            } 
            set
            {
                if(_InternationalCode != value){
                    SendPropertyChanging("InternationalCode");  
                    _InternationalCode = value;
                    SendPropertyChanged("InternationalCode"); 
                }
            }
        }
	    		public string EUCode 
        {
            get
            {
               return _EUCode;
            } 
            set
            {
                if(_EUCode != value){
                    SendPropertyChanging("EUCode");  
                    _EUCode = value;
                    SendPropertyChanged("EUCode"); 
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
	        }
}
