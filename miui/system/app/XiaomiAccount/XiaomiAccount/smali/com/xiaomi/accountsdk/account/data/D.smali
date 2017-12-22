.class public Lcom/xiaomi/accountsdk/account/data/D;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final Uf:Ljava/lang/String;

.field final Ug:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/D;->Ug:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/D;->Uf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Zd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/D;->Uf:Ljava/lang/String;

    return-object v0
.end method
