.class final Lcom/xiaomi/account/utils/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic mN:Lcom/xiaomi/account/utils/f;

.field final synthetic mO:Landroid/content/Context;

.field final synthetic mP:Landroid/content/res/Resources;

.field final synthetic mQ:Landroid/app/FragmentManager;

.field final synthetic mR:Lcom/xiaomi/account/utils/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/utils/f;Landroid/content/Context;Landroid/content/res/Resources;Landroid/app/FragmentManager;Lcom/xiaomi/account/utils/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/utils/x;->mN:Lcom/xiaomi/account/utils/f;

    iput-object p2, p0, Lcom/xiaomi/account/utils/x;->mO:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/account/utils/x;->mP:Landroid/content/res/Resources;

    iput-object p4, p0, Lcom/xiaomi/account/utils/x;->mQ:Landroid/app/FragmentManager;

    iput-object p5, p0, Lcom/xiaomi/account/utils/x;->mR:Lcom/xiaomi/account/utils/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/account/utils/x;->mN:Lcom/xiaomi/account/utils/f;

    iget-object v1, p0, Lcom/xiaomi/account/utils/x;->mO:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/account/utils/x;->mP:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/xiaomi/account/utils/x;->mQ:Landroid/app/FragmentManager;

    iget-object v4, p0, Lcom/xiaomi/account/utils/x;->mR:Lcom/xiaomi/account/utils/h;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/account/utils/f;->nJ(Lcom/xiaomi/account/utils/f;Landroid/content/Context;Landroid/content/res/Resources;Landroid/app/FragmentManager;Lcom/xiaomi/account/utils/h;)V

    return-void
.end method
