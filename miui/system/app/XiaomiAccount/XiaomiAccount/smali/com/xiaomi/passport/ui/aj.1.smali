.class final Lcom/xiaomi/passport/ui/aj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic tX:Lcom/xiaomi/passport/ui/l;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/l;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/aj;->tX:Lcom/xiaomi/passport/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aj;->tX:Lcom/xiaomi/passport/ui/l;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/l;->ui(Lcom/xiaomi/passport/ui/l;)V

    return-void
.end method
