.class final Lcom/xiaomi/passport/ui/Z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic tG:Lcom/xiaomi/passport/ui/k;

.field final synthetic tH:Landroid/widget/EditText;

.field final synthetic tI:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/k;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/Z;->tG:Lcom/xiaomi/passport/ui/k;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/Z;->tH:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/Z;->tI:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/Z;->tH:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/Z;->tI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
