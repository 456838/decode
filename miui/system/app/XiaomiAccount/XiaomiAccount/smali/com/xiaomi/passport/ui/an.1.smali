.class final Lcom/xiaomi/passport/ui/an;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ub:Lcom/xiaomi/passport/ui/p;

.field final synthetic uc:Ljava/lang/String;

.field final synthetic ud:Ljava/lang/String;

.field final synthetic ue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/an;->ub:Lcom/xiaomi/passport/ui/p;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/an;->uc:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/an;->ud:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/passport/ui/an;->ue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/passport/ui/an;->ub:Lcom/xiaomi/passport/ui/p;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/an;->uc:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/an;->ud:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/an;->ue:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/passport/ui/an;->ub:Lcom/xiaomi/passport/ui/p;

    iget-object v4, v4, Lcom/xiaomi/passport/ui/p;->pO:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/passport/ui/an;->ub:Lcom/xiaomi/passport/ui/p;

    iget-object v5, v5, Lcom/xiaomi/passport/ui/p;->pA:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/passport/ui/p;->up(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
