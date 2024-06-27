import { Given, When, Then } from '@wdio/cucumber-framework';
import { expect, $ } from '@wdio/globals'

import LoginPage from '../pageobjects/login.page.js';
import SecurePage from '../pageobjects/secure.page.js';

const pages = {
    login: LoginPage
}

Then(/^I add item to a cart/, async () => {
    const addToCart = await $('[data-test="add-to-cart-sauce-labs-backpack"]');
    await addToCart.click();
});

Then(/^I click cart icon/, async () => {
    const cartIcon = await $('[data-test="shopping-cart-link"]');
    await cartIcon.click();
});

Then(/^I should see the item I add/, async () => {
    const item = await $('[data-test="item-4-title-link"]');
    await item.click();
});