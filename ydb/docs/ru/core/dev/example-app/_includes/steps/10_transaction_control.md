## Управление транзакциями {#tcl}

Выполняются вызовы операторов управления транзакциями [TCL](../../../../concepts/transactions.md) - Begin и Commit.

В большинстве случаев вместо явного использования  вызовов Begin и Commit лучше использовать параметры контроля транзакций в вызовах execute. Это позволит избежать лишних обращений к {{ ydb-short-name }} и эффективней выполнять запросы.
