import Joi from "joi";

const emailMessages = {
    "string.email": "Email must be a valid address",
        "string.min": "Email has to contain at least 8 characters",
        "any.required": "Email is required",
        "string.empty": "Email cannot be empty"
};

const passwordMessages = {
    "string.min": "Password has to contain at least 8 characters",
        "any.required": "Password required",
        "string.empty": "Password cannot be empty"
};

const discordIdMessages = {
    "string.min": "Discord ID has to contain at least 17 characters"
}

const registerJoiSchema = Joi.object({
    user_name: Joi.string().trim().min(2).required().messages({
        "string.min": "Username has to contain at least 2 characters",
        "any.required": "Username is required",
        "string.empty": "Username cannot be empty"
    }),

    email: Joi.string().email().trim().min(8).required().messages(emailMessages),

    password : Joi.string().trim().min(8).required().messages(passwordMessages),

    discord : Joi.string().trim().min(17).messages(discordIdMessages)

});

const loginJoiSchema = Joi.object({
    email: Joi.string().email().trim().min(8).required().messages(emailMessages),

    password : Joi.string().trim().min(8).required().messages(passwordMessages),

});

export { registerJoiSchema, loginJoiSchema };