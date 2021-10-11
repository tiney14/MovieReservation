
namespace MovieReservationSystem.Validations
{
    using FluentValidation;
    using MovieReservationSystem.Models;


    /// <summary>
    /// Validator for <see cref="MovieModel"/>
    /// </summary>
    public class MovieValidator : AbstractValidator<MovieModel>
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="MovieValidator"/> class.
        /// </summary>
        public MovieValidator()
        {
            RuleFor(m => m.Movie_Name)
                .NotEmpty()
                .Length(3, 255)
                .WithMessage("{PropertyName} must be at least {MinLength} characters but no more than {MaxLength} characters in length")
                .Matches(@"^[a-zA-ZñÑ\d!@#$%^&*_+=,?]+[a-zA-Z\dñÑ !@#$%^&*_\-+=,\.?]*$")
                .WithMessage("{PropertyName} contains invalid character(s).");
            RuleFor(m => m.Description)
               .NotEmpty()
               .Length(3, 255)
               .WithMessage("{PropertyName} must be at least {MinLength} characters but no more than {MaxLength} characters in length")
               .Matches(@"^[a-zA-ZñÑ\d!@#$%^&*_+=,?]+[a-zA-Z\dñÑ !@#$%^&*_\-+=,\.?]*$")
               .WithMessage("{PropertyName} contains invalid character(s).");
        }
    }
}


