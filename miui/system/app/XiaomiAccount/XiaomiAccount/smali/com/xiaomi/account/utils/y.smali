.class final Lcom/xiaomi/account/utils/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic mS:Lcom/xiaomi/account/utils/f;

.field final synthetic mT:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/utils/f;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/utils/y;->mS:Lcom/xiaomi/account/utils/f;

    iput-object p2, p0, Lcom/xiaomi/account/utils/y;->mT:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/utils/y;->mT:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
