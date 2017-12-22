.class public Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;
.super Ljava/lang/Exception;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x1ad516af1ad6e348L


# instance fields
.field private caDisableSecondsHeader:Ljava/lang/String;

.field private wwwAuthenticateHeader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->wwwAuthenticateHeader:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->caDisableSecondsHeader:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public adA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->caDisableSecondsHeader:Ljava/lang/String;

    return-object v0
.end method

.method public adx(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->wwwAuthenticateHeader:Ljava/lang/String;

    return-void
.end method

.method public ady(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->caDisableSecondsHeader:Ljava/lang/String;

    return-void
.end method

.method public adz()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->wwwAuthenticateHeader:Ljava/lang/String;

    return-object v0
.end method
