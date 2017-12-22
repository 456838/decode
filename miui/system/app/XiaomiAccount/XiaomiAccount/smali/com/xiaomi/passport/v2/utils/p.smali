.class final Lcom/xiaomi/passport/v2/utils/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/v2/utils/g;


# instance fields
.field final synthetic GJ:Lcom/xiaomi/passport/v2/utils/o;

.field final synthetic GK:Lcom/xiaomi/passport/v2/utils/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/utils/o;Lcom/xiaomi/passport/v2/utils/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/p;->GJ:Lcom/xiaomi/passport/v2/utils/o;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/utils/p;->GK:Lcom/xiaomi/passport/v2/utils/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public yl(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/p;->GK:Lcom/xiaomi/passport/v2/utils/h;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/v2/utils/h;->ys(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    return-void
.end method
