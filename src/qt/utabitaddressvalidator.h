// Copyright (c) 2011-2014 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef UTABIT_QT_UTABITADDRESSVALIDATOR_H
#define UTABIT_QT_UTABITADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class UtabitAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit UtabitAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** Utabit address widget validator, checks for a valid utabit address.
 */
class UtabitAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit UtabitAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // UTABIT_QT_UTABITADDRESSVALIDATOR_H
