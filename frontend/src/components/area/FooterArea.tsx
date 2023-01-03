import { css } from '@emotion/react';
import React from 'react';

export const FooterArea: React.FC = () => (
  <footer css={styles.FooterArea}>
    <span css={styles.Text}>© 2021 ITANDI, Inc.</span>
  </footer>
);

const styles = {
  FooterArea: css`
    align-items: center;
    display: flex;
    height: 40px;
    justify-content: center;
  `,
  Text: css`
    display: block;
  `
};
