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
}

