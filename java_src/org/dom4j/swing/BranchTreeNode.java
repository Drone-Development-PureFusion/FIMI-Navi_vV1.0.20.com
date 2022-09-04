package org.dom4j.swing;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import javax.swing.tree.TreeNode;
import org.dom4j.Branch;
import org.dom4j.CharacterData;
import org.dom4j.Node;
/* loaded from: classes2.dex */
public class BranchTreeNode extends LeafTreeNode {
    protected List children;

    public BranchTreeNode() {
    }

    public BranchTreeNode(Branch xmlNode) {
        super(xmlNode);
    }

    public BranchTreeNode(TreeNode parent, Branch xmlNode) {
        super(parent, xmlNode);
    }

    @Override // org.dom4j.swing.LeafTreeNode
    public Enumeration children() {
        return new Enumeration(this) { // from class: org.dom4j.swing.BranchTreeNode.1
            private int index = -1;
            private final BranchTreeNode this$0;

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return this.index + 1 < this.this$0.getChildCount();
            }

            {
                this.this$0 = this;
            }

            @Override // java.util.Enumeration
            public Object nextElement() {
                BranchTreeNode branchTreeNode = this.this$0;
                int i = this.index + 1;
                this.index = i;
                return branchTreeNode.getChildAt(i);
            }
        };
    }

    @Override // org.dom4j.swing.LeafTreeNode
    public boolean getAllowsChildren() {
        return true;
    }

    @Override // org.dom4j.swing.LeafTreeNode
    public TreeNode getChildAt(int childIndex) {
        return (TreeNode) getChildList().get(childIndex);
    }

    @Override // org.dom4j.swing.LeafTreeNode
    public int getChildCount() {
        return getChildList().size();
    }

    @Override // org.dom4j.swing.LeafTreeNode
    public int getIndex(TreeNode node) {
        return getChildList().indexOf(node);
    }

    @Override // org.dom4j.swing.LeafTreeNode
    public boolean isLeaf() {
        return getXmlBranch().nodeCount() <= 0;
    }

    @Override // org.dom4j.swing.LeafTreeNode
    public String toString() {
        return this.xmlNode.getName();
    }

    protected List getChildList() {
        if (this.children == null) {
            this.children = createChildList();
        }
        return this.children;
    }

    protected List createChildList() {
        String text;
        Branch branch = getXmlBranch();
        int size = branch.nodeCount();
        List childList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            Node node = branch.node(i);
            if (!(node instanceof CharacterData) || ((text = node.getText()) != null && text.trim().length() > 0)) {
                childList.add(createChildTreeNode(node));
            }
        }
        return childList;
    }

    protected TreeNode createChildTreeNode(Node xmlNode) {
        return xmlNode instanceof Branch ? new BranchTreeNode(this, (Branch) xmlNode) : new LeafTreeNode(this, xmlNode);
    }

    protected Branch getXmlBranch() {
        return (Branch) this.xmlNode;
    }
}
