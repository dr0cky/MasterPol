﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Master_Pol
{
    /// <summary>
    /// Логика взаимодействия для PartnerPage.xaml
    /// </summary>
    public partial class PartnerPage : Page
    {
        public PartnerPage()
        {
            InitializeComponent();

            List<Partner> currentPartners = MasterPolEntities.GetContext().Partner.ToList();
            
            PartnerListView.ItemsSource = currentPartners;

        }

        private void Add_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new AddEditPage(null));
        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new AddEditPage((sender as Button).DataContext as Partner));
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            var currentPartners = MasterPolEntities.GetContext().Partner.ToList();

            PartnerListView.ItemsSource = currentPartners;
        }
    }
}
