import { authenticatedFetch } from '@shopify/app-bridge-utils';

import {
  ApolloClient,
  ApolloProvider,
  HttpLink,
  InMemoryCache,
} from '@apollo/client';

import { AppProvider, EmptyState, Page } from '@shopify/polaris';
import { authenticatedFetch } from '@shopify/app-bridge-utils';
import enTranslations from '@shopify/polaris/locales/en.json';
import { gql, useQuery } from '@apollo/client';
import TestData from './TestData'

import React from "react"
import PropTypes from "prop-types"

class App extends React.Component {
  render() {
    return (
      <React.Fragment>
      </React.Fragment>
    );
  }
}

export default function App() {
  const client = new ApolloClient({
    link: new HttpLink({
      credentials: 'same-origin',
      fetch: authenticatedFetch(window.app), // created in shopify_app.js
      uri: '/graphql'
    }),
    cache: new InMemoryCache()
  });

  return (
    <AppProvider i18n={enTranslations}>
      <ApolloProvider client={client}>
        <Page>
          <EmptyState>
            <TestData />
          </EmptyState>
        </Page>
      </ApolloProvider>
    </AppProvider>

  );
}

const TEST_QUERY = gql`query { testField }`;
export default function TestData() {
  const { loading, error, data } = useQuery(TEST_QUERY);
  if (loading) {
    return (
      <div>Loading</div>
    );
  } else if (error) {
    return (
      <div>Something went wrong!</div>
    );
  } else {
    return (
      <p>{data.testField}</p>
    );
  }
}
