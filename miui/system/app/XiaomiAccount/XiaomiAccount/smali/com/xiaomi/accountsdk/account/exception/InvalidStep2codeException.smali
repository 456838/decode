.class public Lcom/xiaomi/accountsdk/account/exception/InvalidStep2codeException;
.super Ljava/lang/Exception;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "wrong step2 code"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
