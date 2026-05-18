from django.db import models
from django.contrib.auth.models import AbstractUser

class User(AbstractUser):
	"""Custom User model with additional fields"""
	email = models.EmailField(unique=True)
	phone_number = models.CharField(max_length=20, blank=True, null=True)
	profile_picture = models.ImageField(upload_to='profiles/', blank=True, null=True)
	bio = models.TextField(blank=True, null=True)
	is_verified = models.BooleanField(default=False)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)

	class Meta:
		ordering = ['-created_at']
		verbose_name = 'User'
		verbose_name_plural = 'Users'

	def __str__(self):
		return self.email
