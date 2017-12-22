.class final Lcom/xiaomi/account/ui/Y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/x;


# instance fields
.field final synthetic ep:Lcom/xiaomi/account/ui/c;

.field final synthetic eq:I


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/Y;->ep:Lcom/xiaomi/account/ui/c;

    iput p2, p0, Lcom/xiaomi/account/ui/Y;->eq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ij(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->values()[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/account/ui/Y;->eq:I

    aget-object v0, v0, v1

    invoke-static {p1, v0, p2}, Lcom/xiaomi/accountsdk/account/b;->abA(Lcom/xiaomi/accountsdk/account/data/a;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;Ljava/lang/String;)V

    return-void
.end method
