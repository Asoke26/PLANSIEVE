SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.ViewCount>=0
AND p.CommentCount>=0
AND v.VoteTypeId=2
AND u.Views>=0
AND u.Views<=34
AND u.UpVotes>=0
AND ph.CreationDate>=29

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;