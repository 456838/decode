.class public Lcom/xiaomi/accountsdk/guestaccount/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final Ox:Lcom/xiaomi/accountsdk/guestaccount/i;

.field private static final Oy:Lcom/xiaomi/accountsdk/guestaccount/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/D;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/D;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/l;->Oy:Lcom/xiaomi/accountsdk/guestaccount/i;

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/o;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/o;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/l;->Ox:Lcom/xiaomi/accountsdk/guestaccount/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
