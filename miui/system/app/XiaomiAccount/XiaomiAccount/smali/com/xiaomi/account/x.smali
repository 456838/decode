.class final Lcom/xiaomi/account/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/a;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sw(Lcom/xiaomi/mistatistic/sdk/data/a;)Lcom/xiaomi/mistatistic/sdk/data/a;
    .locals 2

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/a;->asF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/a/a;->aai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/xiaomi/mistatistic/sdk/data/a;->asE(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
