.class final Lcom/xiaomi/passport/utils/C;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Bc:Lcom/xiaomi/passport/utils/u;

.field final synthetic Bd:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/utils/u;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/utils/C;->Bc:Lcom/xiaomi/passport/utils/u;

    iput-object p2, p0, Lcom/xiaomi/passport/utils/C;->Bd:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/utils/C;->Bd:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
