.class Lcom/xiaomi/mistatistic/sdk/a/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/L;


# instance fields
.field private agF:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/g;->agF:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/g;->agF:Landroid/content/Context;

    const-string/jumbo v1, "device_id"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/ad;->ast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/X;->a(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/g;->agF:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/X;->asd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/X;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/g;->agF:Landroid/content/Context;

    const-string/jumbo v1, "device_id"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/X;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/ad;->asx(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
