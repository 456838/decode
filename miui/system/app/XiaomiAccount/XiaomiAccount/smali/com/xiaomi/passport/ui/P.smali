.class final Lcom/xiaomi/passport/ui/P;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic tm:Lcom/xiaomi/passport/ui/e;

.field final synthetic tn:Ljava/lang/String;

.field final synthetic to:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/P;->tm:Lcom/xiaomi/passport/ui/e;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/P;->tn:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/P;->to:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/passport/ui/P;->tm:Lcom/xiaomi/passport/ui/e;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/P;->tn:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/P;->to:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/P;->tm:Lcom/xiaomi/passport/ui/e;

    iget-object v3, v3, Lcom/xiaomi/passport/ui/e;->py:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/passport/utils/x;->FG(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/P;->tm:Lcom/xiaomi/passport/ui/e;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
