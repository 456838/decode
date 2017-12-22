.class public Lcom/xiaomi/account/data/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private lA:Ljava/lang/String;

.field private lB:Z

.field private lC:Ljava/lang/String;

.field private lD:Lcom/xiaomi/accountsdk/account/data/E;

.field private lE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/D;",
            ">;"
        }
    .end annotation
.end field

.field private ly:Landroid/graphics/Bitmap;

.field private lz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/k;->lz:Ljava/lang/String;

    return-object v0
.end method

.method public mG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/k;->lC:Ljava/lang/String;

    return-object v0
.end method

.method public mH()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/account/data/k;->lD:Lcom/xiaomi/accountsdk/account/data/E;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/data/k;->lD:Lcom/xiaomi/accountsdk/account/data/E;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/E;->Zf()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "https://account.xiaomi.com/static/res/6532f65/PHONE/passport/images/MI/android.png"

    :cond_1
    return-object v0
.end method

.method public mI(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/data/k;->ly:Landroid/graphics/Bitmap;

    return-void
.end method

.method public mJ()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/k;->ly:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public mK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/k;->lD:Lcom/xiaomi/accountsdk/account/data/E;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/data/k;->lD:Lcom/xiaomi/accountsdk/account/data/E;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/E;->Zg()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/data/k;->lC:Ljava/lang/String;

    return-object v0
.end method

.method public mL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/k;->lA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/data/k;->lD:Lcom/xiaomi/accountsdk/account/data/E;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/data/k;->lD:Lcom/xiaomi/accountsdk/account/data/E;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/E;->Ze()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/data/k;->lA:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/data/k;->lA:Ljava/lang/String;

    return-object v0
.end method

.method public mM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/account/data/k;->lB:Z

    return v0
.end method

.method public mN()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/D;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/account/data/k;->lE:Ljava/util/ArrayList;

    return-object v0
.end method

.method public mO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/data/k;->lC:Ljava/lang/String;

    return-void
.end method

.method public mP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/data/k;->lA:Ljava/lang/String;

    return-void
.end method

.method public mQ(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/D;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/account/data/k;->lE:Ljava/util/ArrayList;

    return-void
.end method

.method public mR(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/account/data/k;->lB:Z

    return-void
.end method

.method public mS(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/data/k;->lz:Ljava/lang/String;

    return-void
.end method

.method public mT(Lcom/xiaomi/accountsdk/account/data/E;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/data/k;->lD:Lcom/xiaomi/accountsdk/account/data/E;

    return-void
.end method
