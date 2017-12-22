.class public Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;
.super Ljava/lang/Exception;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mCaptchaUrl:Ljava/lang/String;

.field private final mHasPwd:Z

.field private final mMetaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p3, :cond_0

    const-string/jumbo v0, "password error"

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->mMetaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->mCaptchaUrl:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->mHasPwd:Z

    return-void

    :cond_0
    const-string/jumbo v0, "no password user"

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->mMetaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->mCaptchaUrl:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->mHasPwd:Z

    return-void
.end method


# virtual methods
.method public aaa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->mCaptchaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public aab()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->mHasPwd:Z

    return v0
.end method

.method public aac()Lcom/xiaomi/accountsdk/account/data/MetaLoginData;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->mMetaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    return-object v0
.end method
