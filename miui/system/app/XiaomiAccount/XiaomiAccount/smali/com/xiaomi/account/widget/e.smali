.class final Lcom/xiaomi/account/widget/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/account/task/p",
        "<",
        "Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic nn:Lcom/xiaomi/account/widget/LockedDevicePreference;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/widget/LockedDevicePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/widget/e;->nn:Lcom/xiaomi/account/widget/LockedDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic iH(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/widget/e;->pH(Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;)V

    return-void
.end method

.method public pH(Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/widget/e;->nn:Lcom/xiaomi/account/widget/LockedDevicePreference;

    invoke-static {v0}, Lcom/xiaomi/account/widget/LockedDevicePreference;->pE(Lcom/xiaomi/account/widget/LockedDevicePreference;)Lcom/xiaomi/account/widget/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/widget/e;->nn:Lcom/xiaomi/account/widget/LockedDevicePreference;

    invoke-static {v0}, Lcom/xiaomi/account/widget/LockedDevicePreference;->pE(Lcom/xiaomi/account/widget/LockedDevicePreference;)Lcom/xiaomi/account/widget/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/account/widget/a;->iF(Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;)V

    :cond_0
    return-void
.end method
