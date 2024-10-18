SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.ViewCount >= 1840.0
AND p.CommentCount >= 4
AND v.VoteTypeId = 16
AND u.Views >= 186
AND u.Views <= 207
AND u.UpVotes >= 15
AND ph.CreationDate >= 978

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;