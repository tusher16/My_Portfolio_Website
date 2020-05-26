from django import forms

class UploadCvForm(forms.Form):
    title = forms.CharField(max_length=50)
    file = forms.FileField()