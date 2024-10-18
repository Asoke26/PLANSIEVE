SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.ViewCount >= 898.0
AND p.CommentCount >= 7
AND v.VoteTypeId = 16
AND u.Views >= 842
AND u.Views <= 1660
AND u.UpVotes >= 178
AND ph.CreationDate >= 160

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;