.class final Lcom/xiaomi/account/utils/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic mI:Ljava/lang/String;

.field final synthetic mJ:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/utils/v;->mI:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/account/utils/v;->mJ:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    const-string/jumbo v1, "oauth_category"

    iget-object v2, p0, Lcom/xiaomi/account/utils/v;->mI:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/account/utils/v;->mJ:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/accountsdk/account/a/a;->sy(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
