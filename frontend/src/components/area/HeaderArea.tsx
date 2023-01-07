import { css } from '@emotion/react';
import React from 'react';

export const HeaderArea: React.FC = () => (
  <header css={styles.HeaderArea}>
    <span>勤怠アプリ</span>
  </header>
);

const styles = {
  HeaderArea: css`
    box-shadow: 0 2px 8px rgba(40, 36, 48, 0.16);
  `,
};
