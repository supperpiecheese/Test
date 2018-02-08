﻿Imports System.Data
Partial Class updateDoctor
    Inherits System.Web.UI.Page


    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        Dim DoctorID, fname, minit, lname, email, phone, street, city, state, zip, gender, dob, salary, specialty As String
        Dim aDoctortier As New DoctorDataTier
        DoctorID = ddlUpdateDoctorID.Text.Trim
        fname = txtDoctorFname.Text.Trim
        minit = txtDoctorMidInt.Text.Trim
        lname = txtDoctorLname.Text.Trim
        email = txtDoctorEmail.Text.Trim
        phone = txtDoctorPhone.Text.Trim
        street = txtDoctorStreet.Text.Trim
        city = txtDoctorCity.Text.Trim
        state = txtDoctorState.Text.Trim
        zip = txtDoctorZip.Text.Trim
        gender = txtdoctorGender.Text.Trim
        salary = txtDoctorSalary.Text.Trim
        specialty = txtDoctorSpecialty.Text.Trim
        aDoctortier.UpdateDoctor(DoctorID, fname, minit, lname, email, phone, street, city, state, zip, gender, dob, salary, specialty)
    End Sub

    Private Sub updateDoctor_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim ddatatier As New DoctorDataTier
        Dim ddatatable As New DataTable

        ddatatable = ddatatier.GetAllDoctors().Tables(0)

        For Each dr As DataRow In ddatatable.Rows

            ddlUpdateDoctorID.Items.Add(dr("PhyID"))
        Next

    End Sub

    Private Sub btnFill_Click(sender As Object, e As EventArgs) Handles btnFill.Click
        Dim ddatatier As New DoctorDataTier
        Dim adataset As New DataSet
        Dim adatatable As New DataTable

        adataset = ddatatier.GetDoctorByID(ddlUpdateDoctorID.SelectedValue)

        adatatable = adataset.Tables(0)

        txtdoctorFname.Text = adatatable.Rows(0)("fname")
    End Sub
End Class
