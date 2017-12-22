.class public Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;
.super Ljava/lang/Object;
.source "FindDeviceKeyguardPageUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginResult"
.end annotation


# instance fields
.field public accountInfo:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

.field public errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 1
    .param p1, "accountInfo"    # Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;->accountInfo:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;->errorMessage:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;->accountInfo:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 72
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;->errorMessage:Ljava/lang/String;

    .line 70
    return-void
.end method
