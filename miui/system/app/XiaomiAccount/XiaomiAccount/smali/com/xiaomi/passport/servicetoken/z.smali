.class abstract Lcom/xiaomi/passport/servicetoken/z;
.super Lcom/xiaomi/accountsdk/a/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/accountsdk/a/e",
        "<",
        "Lcom/xiaomi/passport/IPassportServiceTokenService;",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/accountsdk/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/accountsdk/a/a",
            "<TT;TT;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "com.xiaomi.account.action.SERVICE_TOKEN_OP"

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/xiaomi/accountsdk/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/a/a;)V

    return-void
.end method


# virtual methods
.method protected final MX(Landroid/os/IBinder;)Lcom/xiaomi/passport/IPassportServiceTokenService;
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/passport/IPassportServiceTokenService$Stub;->Qd(Landroid/os/IBinder;)Lcom/xiaomi/passport/IPassportServiceTokenService;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic MX(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/servicetoken/z;->MX(Landroid/os/IBinder;)Lcom/xiaomi/passport/IPassportServiceTokenService;

    move-result-object v0

    return-object v0
.end method
