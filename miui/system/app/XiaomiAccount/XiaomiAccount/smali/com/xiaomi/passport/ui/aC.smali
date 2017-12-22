.class final Lcom/xiaomi/passport/ui/aC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic uw:Lcom/xiaomi/passport/ui/w;

.field final synthetic ux:Ljava/lang/String;

.field final synthetic uy:Ljava/lang/String;

.field final synthetic uz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/w;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/aC;->uw:Lcom/xiaomi/passport/ui/w;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/aC;->ux:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/aC;->uy:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/passport/ui/aC;->uz:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aC;->uw:Lcom/xiaomi/passport/ui/w;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aC;->ux:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/aC;->uy:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/aC;->uz:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/passport/ui/aC;->uw:Lcom/xiaomi/passport/ui/w;

    iget-object v4, v4, Lcom/xiaomi/passport/ui/w;->pO:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/passport/ui/aC;->uw:Lcom/xiaomi/passport/ui/w;

    iget-object v5, v5, Lcom/xiaomi/passport/ui/w;->pA:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/passport/ui/w;->up(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
