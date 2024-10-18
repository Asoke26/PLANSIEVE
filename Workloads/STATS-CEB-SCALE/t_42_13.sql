SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 1
AND p.Score >= 99
AND u.Reputation >= 153
AND u.UpVotes >= 83
AND u.UpVotes <= 161

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;