﻿<%@ Page Title="" Language="VB" MasterPageFile="~/main.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" Runat="Server">
    <form runat="server" id="testing">
        

        <div id="modal-full" class="jen-modal-full jen-modal" jen-modal>
            <div class="jen-modal-dialog jen-flex jen-flex-center jen-flex-middle" jen-height-viewport>
                <button class="jen-modal-close-full" type="button" jen-close></button>
                <div class="jen-search jen-search-large" action="/search.aspx" method="get" enctype="multipart/form-data">
                    <input type="text"
                        class="jen-search-input jen-text-center"
                        id="txtSearch"
                        onkeydown="if (event.keyCode == 13)
                        doSomething();"
                        placeholder="Search..." autofocus />
                </div>
            </div>
        </div>


    </form>
    <div class="jen-card jen-card-hover jen-card-body">

        <h3 class="jen-card-title">Client</h3>
        <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
            <a href="/addClient.aspx">
                <h3 class="jen-card-title">Add Client</h3>
                <p>Click here to add a patient.</p>
            </a>
        </div>

        <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
            <a href="/updateClient.aspx">
                <h3 class="jen-card-title">Update Client</h3>
                <p>Click here to update client.</p>
            </a>
        </div>
    </div>

    <div class="jen-card jen-card-hover jen-card-body">
        <h3 class="jen-card-title">Doctor</h3>
        <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
            <a href="/addDoctor.aspx">
                <h3 class="jen-card-title">Add Doctor</h3>
                <p>Click here to add doctor.</p>
            </a>
        </div>
        <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
            <a href="/updateDoctor.aspx">
                <h3 class="jen-card-title">Update Doctor</h3>
                <p>Click here to update doctor.</p>
            </a>
        </div>
    </div>

    <div class="jen-card jen-card-hover jen-card-body">
        <h3 class="jen-card-title">Prescription</h3>
        <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
            <a href="/addPrescription.aspx">
                <h3 class="jen-card-title">Add Prescription</h3>
                <p>Click here to add a prescription.</p>
            </a>
        </div>
        <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
            <a href="/updatePrescription.aspx">
                <h3 class="jen-card-title">Update Prescription</h3>
                <p>Click here to update a prescription.</p>
            </a>
        </div>
         <div class="jen-card jen-card-secondary jen-card-hover jen-card-body jen-light">
            <a href="/deletePrescription.aspx">
                <h3 class="jen-card-title">Delete Prescription</h3>
                <p>Click here to delete a prescription.</p>
            </a>
        </div>
    </div>
       
</asp:Content>

