using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;


namespace PTW_Pro.Models
{
    public class UserModel
    {
        [Required(ErrorMessage = "Required")]
        public string UserName { get; set; }

        [Required(ErrorMessage = "Required")]
        public string Password { get; set; }

        [Compare("Password", ErrorMessage = "Confirm password is not correct !")]
        public string ConfirmPassword { get; set; }
        [Required(ErrorMessage = "Required")]
        public string TenKhachHang { get; set; }
        [Required(ErrorMessage = "Required")]
        public string DiaChi { get; set; }
        [Required(ErrorMessage = "Required")]
        [RegularExpression(@"((09|03|05|07|08)+([0-9]{8}))", ErrorMessage = "Phone Number is invalid!")]
        public string SoDienThoai { get; set; }

        [Required(ErrorMessage = "Required")]
        [EmailAddress(ErrorMessage = "Email is invalid")]

        public string Email { get; set; }
       
    }
}