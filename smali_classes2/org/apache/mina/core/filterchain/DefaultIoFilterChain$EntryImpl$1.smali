.class Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;
.super Ljava/lang/Object;
.source "DefaultIoFilterChain.java"

# interfaces
.implements Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

.field final synthetic val$this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;


# direct methods
.method constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;)V
    .locals 0
    .param p1, "this$1"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .prologue
    .line 914
    iput-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iput-object p2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->val$this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 936
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 937
    .local v0, "nextEntry":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-static {v1, v0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->access$1100(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    .line 938
    return-void
.end method

.method public filterClose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 961
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 962
    .local v0, "nextEntry":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-static {v1, v0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->access$1600(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    .line 963
    return-void
.end method

.method public filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 956
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 957
    .local v0, "nextEntry":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-static {v1, v0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->access$1500(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 958
    return-void
.end method

.method public inputClosed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 941
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 942
    .local v0, "nextEntry":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-static {v1, v0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->access$1200(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    .line 943
    return-void
.end method

.method public messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 946
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 947
    .local v0, "nextEntry":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-static {v1, v0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->access$1300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 948
    return-void
.end method

.method public messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 951
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 952
    .local v0, "nextEntry":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-static {v1, v0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->access$1400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 953
    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 926
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 927
    .local v0, "nextEntry":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-static {v1, v0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->access$900(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    .line 928
    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 916
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 917
    .local v0, "nextEntry":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-static {v1, v0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->access$700(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    .line 918
    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "status"    # Lorg/apache/mina/core/session/IdleStatus;

    .prologue
    .line 931
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 932
    .local v0, "nextEntry":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-static {v1, v0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->access$1000(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    .line 933
    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 921
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 922
    .local v0, "nextEntry":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-static {v1, v0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->access$800(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    .line 923
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;->this$1:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$600(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
