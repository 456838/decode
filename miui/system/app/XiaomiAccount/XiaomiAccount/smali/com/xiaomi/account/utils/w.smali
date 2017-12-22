.class final Lcom/xiaomi/account/utils/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic mK:Lcom/xiaomi/account/utils/g;

.field final synthetic mL:Landroid/content/res/Resources;

.field final synthetic mM:Landroid/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/utils/g;Landroid/content/res/Resources;Landroid/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/utils/w;->mK:Lcom/xiaomi/account/utils/g;

    iput-object p2, p0, Lcom/xiaomi/account/utils/w;->mL:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/xiaomi/account/utils/w;->mM:Landroid/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/utils/w;->mK:Lcom/xiaomi/account/utils/g;

    iget-object v1, p0, Lcom/xiaomi/account/utils/w;->mL:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/xiaomi/account/utils/w;->mM:Landroid/app/FragmentManager;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/account/utils/g;->nR(Lcom/xiaomi/account/utils/g;Landroid/content/res/Resources;Landroid/app/FragmentManager;)V

    return-void
.end method
