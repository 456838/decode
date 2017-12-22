.class final Lcom/xiaomi/passport/ui/U;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic tA:Ljava/lang/String;

.field final synthetic tz:Lcom/xiaomi/passport/ui/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/U;->tz:Lcom/xiaomi/passport/ui/h;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/U;->tA:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/U;->tz:Lcom/xiaomi/passport/ui/h;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/U;->tA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/ui/h;->tv(Lcom/xiaomi/passport/ui/h;Ljava/lang/String;)V

    return-void
.end method
