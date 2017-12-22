.class final Lcom/xiaomi/passport/ui/ax;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic uq:Lcom/xiaomi/passport/ui/u;

.field final synthetic ur:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/u;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/ax;->uq:Lcom/xiaomi/passport/ui/u;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/ax;->ur:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ax;->uq:Lcom/xiaomi/passport/ui/u;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/u;->vN(Lcom/xiaomi/passport/ui/u;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ax;->uq:Lcom/xiaomi/passport/ui/u;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/ax;->ur:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/ui/u;->vL(Lcom/xiaomi/passport/ui/u;Ljava/lang/String;)V

    return-void
.end method
