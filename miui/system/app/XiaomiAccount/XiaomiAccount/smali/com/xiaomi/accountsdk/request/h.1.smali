.class public Lcom/xiaomi/accountsdk/request/h;
.super Lcom/xiaomi/accountsdk/request/e;
.source ""


# instance fields
.field private XU:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/e;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/h;->XU:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public aeb()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/h;->XU:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/E;->aja(Ljava/io/InputStream;)V

    return-void
.end method

.method public aec()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/h;->XU:Ljava/io/InputStream;

    return-object v0
.end method
