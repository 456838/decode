.class final Lcom/xiaomi/account/ui/ad;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/x;


# instance fields
.field final synthetic eA:Ljava/lang/String;

.field final synthetic ey:Lcom/xiaomi/account/ui/c;

.field final synthetic ez:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/ad;->ey:Lcom/xiaomi/account/ui/c;

    iput-object p2, p0, Lcom/xiaomi/account/ui/ad;->ez:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/account/ui/ad;->eA:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ij(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/ad;->ez:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/account/ui/ad;->eA:Ljava/lang/String;

    invoke-static {p1, v0, v1, p2}, Lcom/xiaomi/accountsdk/account/b;->abC(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
