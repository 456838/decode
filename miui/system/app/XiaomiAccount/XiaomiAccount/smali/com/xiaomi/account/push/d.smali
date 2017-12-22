.class final Lcom/xiaomi/account/push/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;


# instance fields
.field final synthetic nx:Lcom/xiaomi/account/push/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/push/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/push/d;->nx:Lcom/xiaomi/account/push/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "AccountPushManager"

    invoke-static {v0, p1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string/jumbo v0, "AccountPushManager"

    invoke-static {v0, p1, p2}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
