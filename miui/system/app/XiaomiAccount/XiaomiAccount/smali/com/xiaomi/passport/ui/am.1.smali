.class final Lcom/xiaomi/passport/ui/am;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ua:Lcom/xiaomi/passport/ui/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/p;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/am;->ua:Lcom/xiaomi/passport/ui/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/am;->ua:Lcom/xiaomi/passport/ui/p;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/p;->ua(I)V

    return-void
.end method
