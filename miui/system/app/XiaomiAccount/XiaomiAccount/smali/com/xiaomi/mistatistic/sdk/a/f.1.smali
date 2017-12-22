.class Lcom/xiaomi/mistatistic/sdk/a/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/a;


# instance fields
.field final synthetic agE:Lcom/xiaomi/mistatistic/sdk/a/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/f;->agE:Lcom/xiaomi/mistatistic/sdk/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sw(Lcom/xiaomi/mistatistic/sdk/data/a;)Lcom/xiaomi/mistatistic/sdk/data/a;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/a;->asF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/xiaomi/mistatistic/sdk/data/a;->asE(Ljava/lang/String;)V

    return-object p1
.end method
