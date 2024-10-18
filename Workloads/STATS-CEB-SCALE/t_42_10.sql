SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 33
AND p.Score >= 67
AND u.Reputation >= 668
AND u.UpVotes >= 10
AND u.UpVotes <= 205

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;